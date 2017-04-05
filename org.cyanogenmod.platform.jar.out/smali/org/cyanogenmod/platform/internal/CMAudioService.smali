.class public Lorg/cyanogenmod/platform/internal/CMAudioService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "CMAudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMAudioService$1;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_SESSION_EFFECTS_UPDATE:I = 0xa

.field private static final AUDIO_STATUS_OK:I = 0x0

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CMAudioService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/CMAudioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMAudioService;ILjava/util/ArrayList;)I
    .locals 1
    .param p1, "stream"    # I
    .param p2, "sessions"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMAudioService;->native_listAudioSessions(ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "CMAudioService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/CMAudioService;->DEBUG:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMAudioService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMAudioService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMAudioService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioService;->mBinder:Landroid/os/IBinder;

    .line 54
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMAudioService;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private declared-synchronized audioSessionCallbackFromNative(ILcyanogenmod/media/AudioSessionInfo;Z)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "sessionInfo"    # Lcyanogenmod/media/AudioSessionInfo;
    .param p3, "added"    # Z

    .prologue
    monitor-enter p0

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 153
    :try_start_0
    const-string/jumbo v0, "CMAudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 146
    return-void

    .line 150
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p3, p2}, Lorg/cyanogenmod/platform/internal/CMAudioService;->broadcastSessionChanged(ZLcyanogenmod/media/AudioSessionInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method private broadcastSessionChanged(ZLcyanogenmod/media/AudioSessionInfo;)V
    .locals 2
    .param p1, "added"    # Z
    .param p2, "sessionInfo"    # Lcyanogenmod/media/AudioSessionInfo;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.intent.action.ACTION_AUDIO_SESSIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "session_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "added"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "cyanogenmod.permission.OBSERVE_AUDIO_SESSIONS"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMAudioService;->sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private final native native_listAudioSessions(ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method private final native native_registerAudioSessionCallback(Z)V
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 130
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    .local v0, "ident":J
    :try_start_0
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMAudioService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CMAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMAudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    return-void

    .line 137
    :catchall_0
    move-exception v2

    .line 138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v2
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "org.cyanogenmod.audio"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 74
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 75
    invoke-static {}, Lorg/cyanogenmod/platform/internal/NativeHelper;->isNativeLibraryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMAudioService;->native_registerAudioSessionCallback(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lorg/cyanogenmod/platform/internal/NativeHelper;->isNativeLibraryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "CMAudioService"

    const-string/jumbo v1, "CM Audio service started by system server by native library isunavailable. Service will be unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 69
    :cond_0
    const-string/jumbo v0, "cmaudio"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMAudioService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMAudioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    return-void
.end method
