.class public Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$2;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;
    }
.end annotation


# static fields
.field private static final CATEGORY_THEME_CHOOSER:Ljava/lang/String; = "cyanogenmod.intent.category.APP_THEMES"

.field private static final CM_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.cyanogenmod.setupwizard"

.field private static final DEBUG:Z = false

.field private static final GOOGLE_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final MANAGED_PROVISIONING_PACKAGE:Ljava/lang/String; = "com.android.managedprovisioning"

.field private static final MIN_COMPATIBLE_VERSION:I = 0x15

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/themes/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

.field private mIsThemeApplying:Z

.field private mLastThemeChangeRequestType:I

.field private mLastThemeChangeTime:J

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mProcessingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/themes/IThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

.field private final mService:Landroid/os/IBinder;

.field private final mThemesToProcessQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangedByUs:Z

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get10(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    return v0
.end method

.method static synthetic -get11(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    return-object v0
.end method

.method static synthetic -get12(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get14(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    return v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    return v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeRequestType:I

    return v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get9(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/ThemeManagerService;I)I
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->doApplyDefaultTheme()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 0
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppTheme"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->doApplyTheme(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->doRebuildResourceCache()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFailedThemeInstallNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFinishedProcessing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "themePkgName"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Lcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 0
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateProvider(Lcyanogenmod/themes/ThemeChangeRequest;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 116
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    .line 117
    iput v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mCurrentUserId:I

    .line 119
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    .line 121
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    .line 124
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 123
    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    .line 128
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    .line 1004
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1018
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1160
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    .line 223
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    .line 224
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ThemeServiceWorker"

    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWorker:Landroid/os/HandlerThread;

    .line 225
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    .line 227
    sget-object v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Spawned worker thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ResourceProcessingThread"

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 231
    .local v0, "processingThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 233
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V

    .line 232
    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    .line 236
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createThemeDirIfNotExists()V

    .line 237
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createFontDirIfNotExists()V

    .line 238
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createAlarmDirIfNotExists()V

    .line 239
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createNotificationDirIfNotExists()V

    .line 240
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createRingtoneDirIfNotExists()V

    .line 241
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createIconCacheDirIfNotExists()V

    .line 221
    return-void
.end method

.method private applyBootAnimation(Ljava/lang/String;)Z
    .locals 9
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 976
    const/4 v3, 0x0

    .line 978
    .local v3, "success":Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 979
    .local v5, "zip":Ljava/util/zip/ZipFile;
    const-string/jumbo v6, "assets/bootanimation/bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 980
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_0

    .line 981
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->clearBootAnimation()V

    .line 982
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 983
    .local v2, "is":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 984
    const-string/jumbo v7, "bootanimation.zip"

    .line 983
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "bootAnimationPath":Ljava/lang/String;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 987
    const/16 v6, 0x1e4

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 986
    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 989
    .end local v0    # "bootAnimationPath":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/BufferedInputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    const/4 v3, 0x1

    .line 995
    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    .end local v5    # "zip":Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to load boot animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private broadcastThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 6
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    .line 956
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v0

    .line 957
    .local v0, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 959
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 961
    .local v1, "componentsArrayList":Ljava/util/ArrayList;
    const-string/jumbo v3, "components"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 962
    const-string/jumbo v3, "request_type"

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getReqeustType()Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v4

    invoke-virtual {v4}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    const-string/jumbo v3, "update_time"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 964
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 955
    return-void
.end method

.method private clearBootAnimation()V
    .locals 3

    .prologue
    .line 999
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/system/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, "anim":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 998
    :cond_0
    return-void
.end method

.method private static createBuilderFrom(Landroid/content/res/Configuration;Lcyanogenmod/themes/ThemeChangeRequest;Ljava/lang/String;Z)Landroid/content/res/ThemeConfig$Builder;
    .locals 6
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "removePerAppThemes"    # Z

    .prologue
    .line 806
    new-instance v3, Landroid/content/res/ThemeConfig$Builder;

    iget-object v4, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {v3, v4}, Landroid/content/res/ThemeConfig$Builder;-><init>(Landroid/content/res/ThemeConfig;)V

    .line 808
    .local v3, "builder":Landroid/content/res/ThemeConfig$Builder;
    if-eqz p3, :cond_0

    iget-object v4, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-static {v3, v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->removePerAppThemesFromConfig(Landroid/content/res/ThemeConfig$Builder;Landroid/content/res/ThemeConfig;)V

    .line 810
    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 811
    if-nez p2, :cond_8

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 814
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 815
    if-nez p2, :cond_9

    .line 816
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 815
    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 819
    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 820
    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 823
    :cond_3
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 824
    const-string/jumbo v5, "com.android.systemui"

    if-nez p2, :cond_b

    .line 825
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 824
    :goto_3
    invoke-virtual {v3, v5, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 828
    :cond_4
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 829
    const-string/jumbo v4, "com.android.systemui.navbar"

    if-nez p2, :cond_5

    .line 830
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object p2

    .line 829
    .end local p2    # "pkgName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v4, p2}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 834
    :cond_6
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getPerAppOverlays()Ljava/util/Map;

    move-result-object v0

    .line 835
    .local v0, "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appPkgName$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    .local v1, "appPkgName":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 837
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    goto :goto_4

    .end local v0    # "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v2    # "appPkgName$iterator":Ljava/util/Iterator;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :cond_8
    move-object v4, p2

    .line 811
    goto :goto_0

    :cond_9
    move-object v4, p2

    .line 816
    goto :goto_1

    :cond_a
    move-object v4, p2

    .line 820
    goto :goto_2

    :cond_b
    move-object v4, p2

    .line 825
    goto :goto_3

    .line 841
    .end local p2    # "pkgName":Ljava/lang/String;
    .restart local v0    # "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "appPkgName$iterator":Ljava/util/Iterator;
    :cond_c
    return-object v3
.end method

.method private doApplyDefaultTheme()V
    .locals 11

    .prologue
    .line 487
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 488
    .local v7, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 491
    const-string/jumbo v8, "default_theme_components"

    .line 490
    invoke-static {v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "defaultThemeComponents":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 494
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getAllComponents()Ljava/util/List;

    move-result-object v3

    .line 499
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 500
    .local v0, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "component$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v0, v1, v5}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto :goto_1

    .line 496
    .end local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "component$iterator":Ljava/util/Iterator;
    .end local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 497
    const-string/jumbo v8, "\\|"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 496
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 504
    .restart local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v2    # "component$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    check-cast v8, Lcyanogenmod/themes/IThemeService;

    invoke-virtual {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v2    # "component$iterator":Ljava/util/Iterator;
    .end local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "defaultThemeComponents":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 505
    .restart local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v2    # "component$iterator":Ljava/util/Iterator;
    .restart local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "defaultThemeComponents":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 506
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to set default theme"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private doApplyTheme(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 8
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppTheme"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 402
    monitor-enter p0

    .line 403
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 406
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNumChangesRequested()I

    move-result v2

    if-nez v2, :cond_1

    .line 407
    :cond_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v6, p1, v2, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFinish(ZLcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 408
    return-void

    .line 402
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 410
    :cond_1
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    .line 412
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getReqeustType()Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeRequestType:I

    .line 414
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 417
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNumChangesRequested()I

    move-result v2

    const/16 v3, 0x4b

    div-int v1, v3, v2

    .line 419
    .local v1, "progressIncrement":I
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 420
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateIcons(Ljava/lang/String;)Z

    .line 421
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 424
    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 425
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperId()J

    move-result-wide v4

    .line 425
    invoke-direct {p0, v2, v4, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateWallpaper(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    .line 429
    :cond_3
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 432
    :cond_4
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLockWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 433
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLockWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateLockscreen(Ljava/lang/String;)Z

    .line 434
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 437
    :cond_5
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 438
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNotificationThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 439
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNotificationThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateNotifications(Ljava/lang/String;)Z

    .line 440
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 443
    :cond_6
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getAlarmThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 444
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getAlarmThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAlarms(Ljava/lang/String;)Z

    .line 445
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 448
    :cond_7
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getRingtoneThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 449
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getRingtoneThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateRingtones(Ljava/lang/String;)Z

    .line 450
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 452
    :cond_8
    invoke-static {v6}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 454
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getBootanimationThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 455
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getBootanimationThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateBootAnim(Ljava/lang/String;)Z

    .line 456
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 459
    :cond_9
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 460
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateFonts(Ljava/lang/String;)Z

    .line 461
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 464
    :cond_a
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLiveLockScreenThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 465
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLiveLockScreenThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateLiveLockScreen(Ljava/lang/String;)Z

    .line 466
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 470
    :cond_b
    :try_start_1
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    invoke-direct {p0, p1, v2, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateProvider(Lcyanogenmod/themes/ThemeChangeRequest;J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    :goto_0
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->shouldUpdateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 477
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;Z)Z

    .line 480
    :cond_c
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->killLaunchers(Lcyanogenmod/themes/ThemeChangeRequest;)V

    .line 482
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    invoke-direct {p0, v6, p1, v2, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFinish(ZLcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 483
    iput-boolean v7, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    .line 401
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Not updating the theme provider since it is unavailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doRebuildResourceCache()V
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 513
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->processInstalledThemes()V

    .line 511
    return-void
.end method

.method private static getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1111
    const-string/jumbo v4, "default_theme_package"

    .line 1110
    invoke-static {v3, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1115
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1116
    return-object v0

    .line 1118
    :catch_0
    move-exception v1

    .line 1120
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Default theme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1124
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string/jumbo v3, "system"

    return-object v3
.end method

.method private getThemeChooserPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 1153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "cyanogenmod.intent.category.APP_THEMES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1156
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const-class v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->hashCode()I

    move-result v2

    .line 1157
    const/4 v3, 0x0

    .line 1156
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 1091
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    iget-object v0, v0, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    return-object v0

    .line 1093
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    return-object v0

    .line 1097
    :cond_1
    return-object v1
.end method

.method private handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 897
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 898
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 899
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    const/4 v2, 0x1

    return v2

    .line 904
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private incrementProgress(I)V
    .locals 2
    .param p1, "increment"    # I

    .prologue
    const/16 v1, 0x64

    .line 968
    monitor-enter p0

    .line 969
    :try_start_0
    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    .line 970
    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 972
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postProgress()V

    .line 967
    return-void

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSetupActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 891
    const-string/jumbo v0, "com.google.android.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    const-string/jumbo v0, "com.android.managedprovisioning"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 891
    if-nez v0, :cond_0

    .line 893
    const-string/jumbo v0, "com.cyanogenmod.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isThemeApiUpToDate()Z
    .locals 6

    .prologue
    .line 377
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 378
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 381
    .local v1, "recordedApiLevel":I
    :try_start_0
    const-string/jumbo v3, "theme_prev_boot_api_level"

    .line 380
    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 386
    :goto_0
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prev api level was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    const-string/jumbo v5, ", api is now: "

    .line 386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    const/4 v1, -0x1

    .line 384
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Previous api level not found. First time booting?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v0    # "e":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isThemeCompatibleWithUpgradedApi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "compatible":Z
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 365
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Comparing theme target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 366
    const-string/jumbo v5, "to "

    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 366
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    .line 371
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 367
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private killLaunchers(Lcyanogenmod/themes/ThemeChangeRequest;)V
    .locals 12
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;

    .prologue
    const/4 v11, 0x0

    .line 859
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 860
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 861
    return-void

    .line 865
    :cond_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 867
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 868
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    const-string/jumbo v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 872
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    .line 873
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 874
    .local v7, "themeChangeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 875
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_1

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    .line 876
    invoke-direct {p0, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->isSetupActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 877
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 876
    invoke-direct {p0, v8, v7}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 878
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 879
    .local v6, "pkgToStop":Ljava/lang/String;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Force stopping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for theme change"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to force stop package, did you forget platform signature?"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 858
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "pkgToStop":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private postFailedThemeInstallNotification(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1076
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1077
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1081
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x3f060056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1083
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x3f060057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1082
    new-array v4, v6, [Ljava/lang/Object;

    .line 1083
    aput-object p1, v4, v5

    .line 1082
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1084
    const v3, 0x1080078

    .line 1077
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1077
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1087
    .local v1, "notice":Landroid/app/Notification;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1074
    return-void
.end method

.method private postFinish(ZLcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 7
    .param p1, "isSuccess"    # Z
    .param p2, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p3, "updateTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 921
    monitor-enter p0

    .line 922
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 925
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 926
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 927
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeChangeListener;

    .line 929
    .local v3, "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :try_start_1
    invoke-interface {v3, p1}, Lcyanogenmod/themes/IThemeChangeListener;->onFinish(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 930
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :catch_0
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 934
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 937
    if-eqz p1, :cond_1

    .line 938
    invoke-direct {p0, p2, p3, p4}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->broadcastThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 920
    :cond_1
    return-void
.end method

.method private postFinishedProcessing(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 943
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 944
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 945
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeProcessingListener;

    .line 947
    .local v3, "listener":Lcyanogenmod/themes/IThemeProcessingListener;
    :try_start_0
    invoke-interface {v3, p1}, Lcyanogenmod/themes/IThemeProcessingListener;->onFinishedProcessing(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to post progress to listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 952
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeProcessingListener;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 942
    return-void
.end method

.method private postProgress()V
    .locals 6

    .prologue
    .line 908
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 909
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 910
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeChangeListener;

    .line 912
    .local v3, "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :try_start_0
    iget v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    invoke-interface {v3, v4}, Lcyanogenmod/themes/IThemeChangeListener;->onProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    :catch_0
    move-exception v1

    .line 914
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 917
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 907
    return-void
.end method

.method private processInstalledThemes()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1041
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "defaultTheme":Ljava/lang/String;
    const-string/jumbo v5, "system"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1045
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    invoke-virtual {v5, v8, v7, v7, v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1048
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    invoke-virtual {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 1052
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1053
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1054
    iget-boolean v5, v1, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    .line 1053
    if-eqz v5, :cond_1

    .line 1055
    :cond_2
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    .line 1057
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1055
    invoke-virtual {v5, v8, v7, v7, v6}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1058
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    invoke-virtual {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1040
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method private publishThemesTile()V
    .locals 10

    .prologue
    .line 1129
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 1130
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1132
    .local v4, "token":J
    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1133
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lorg/cyanogenmod/internal/util/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 1135
    .local v1, "resourceContext":Landroid/content/Context;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v2

    .line 1136
    .local v2, "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->getThemeChooserPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1137
    .local v0, "chooserIntent":Landroid/app/PendingIntent;
    new-instance v8, Lcyanogenmod/app/CustomTile$Builder;

    invoke-direct {v8, v1}, Lcyanogenmod/app/CustomTile$Builder;-><init>(Landroid/content/Context;)V

    .line 1138
    const v9, 0x3f060078

    .line 1137
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setLabel(I)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 1139
    const v9, 0x3f060079

    .line 1137
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setContentDescription(I)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 1140
    const v9, 0x3f020008

    .line 1137
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setIcon(I)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcyanogenmod/app/CustomTile$Builder;->setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcyanogenmod/app/CustomTile$Builder;->setOnLongClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 1143
    const/4 v9, 0x1

    .line 1137
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->shouldCollapsePanel(Z)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcyanogenmod/app/CustomTile$Builder;->build()Lcyanogenmod/app/CustomTile;

    move-result-object v3

    .line 1145
    .local v3, "tile":Lcyanogenmod/app/CustomTile;
    const-string/jumbo v8, "themes"

    .line 1146
    const-class v9, Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-virtual {v9}, Ljava/lang/Class;->hashCode()I

    move-result v9

    .line 1145
    invoke-virtual {v2, v8, v9, v3, v6}, Lcyanogenmod/app/CMStatusBarManager;->publishTileAsUser(Ljava/lang/String;ILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1127
    return-void

    .line 1147
    .end local v0    # "chooserIntent":Landroid/app/PendingIntent;
    .end local v1    # "resourceContext":Landroid/content/Context;
    .end local v2    # "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    .end local v3    # "tile":Lcyanogenmod/app/CustomTile;
    .end local v6    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v8

    .line 1148
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    throw v8
.end method

.method private registerAppsFailureReceiver()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "cyanogenmod.intent.action.APP_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v1, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;

    invoke-direct {v2}, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    return-void
.end method

.method private removeObsoleteThemeOverlayIfExists()V
    .locals 15

    .prologue
    .line 288
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 289
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x0

    .line 291
    .local v3, "config":Landroid/content/res/ThemeConfig;
    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v3, v12, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 300
    .end local v3    # "config":Landroid/content/res/ThemeConfig;
    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 294
    .restart local v3    # "config":Landroid/content/res/ThemeConfig;
    :cond_0
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "ActivityManager getDefault() returned null, cannot remove obsolete theme"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v7

    .line 298
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Failed to get the theme config "

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 304
    .end local v3    # "config":Landroid/content/res/ThemeConfig;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v4, "currentThemeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "mods_status_bar"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v12, "mods_navigation_bar"

    .line 307
    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v13

    .line 306
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v12, "mods_overlays"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 314
    .local v6, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 315
    .local v1, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 316
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "component":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 318
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 320
    .local v5, "defaultPkg":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 321
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Default package is null, skipping "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 326
    :cond_3
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 327
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Current overlay theme is same as default. Not doing anything for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    :cond_4
    const-string/jumbo v12, "system"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 334
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Current overlay theme for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 335
    const-string/jumbo v14, " was system. no need to unapply"

    .line 334
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 339
    :cond_5
    invoke-direct {p0, v10}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->isThemeCompatibleWithUpgradedApi(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 340
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "is incompatible with latest theme api for component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 341
    const-string/jumbo v14, ", Applying "

    .line 340
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v1, v2, v10}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto/16 :goto_1

    .line 347
    .end local v2    # "component":Ljava/lang/String;
    .end local v5    # "defaultPkg":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v11

    .line 348
    .local v11, "request":Lcyanogenmod/themes/ThemeChangeRequest;
    invoke-virtual {v11}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 350
    :try_start_1
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    check-cast v12, Lcyanogenmod/themes/IThemeService;

    const/4 v13, 0x1

    invoke-interface {v12, v11, v13}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :goto_2
    return-void

    .line 355
    :cond_7
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Current theme is compatible with the system. Not unapplying anything"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 351
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private static removePerAppThemesFromConfig(Landroid/content/res/ThemeConfig$Builder;Landroid/content/res/ThemeConfig;)V
    .locals 5
    .param p0, "builder"    # Landroid/content/res/ThemeConfig$Builder;
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v4, 0x0

    .line 846
    if-eqz p1, :cond_1

    .line 847
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    .line 848
    .local v2, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 849
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->isPerAppThemeComponent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {p0, v0, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    goto :goto_0

    .line 845
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v1    # "appPkgName$iterator":Ljava/util/Iterator;
    .end local v2    # "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_1
    return-void
.end method

.method private sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "themePkgName"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.THEME_RESOURCES_CACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string/jumbo v1, "android.intent.extra.RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1063
    return-void
.end method

.method private setCustomLockScreenWallpaper(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 705
    .local v2, "wm":Landroid/app/WallpaperManager;
    :try_start_0
    const-string/jumbo v3, "system"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    :cond_0
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clearKeyguardWallpaper()V

    .line 718
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 708
    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lorg/cyanogenmod/internal/util/ImageUtils;->getCroppedKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 709
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setKeyguardStream(Ljava/io/InputStream;)V

    .line 711
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    const/4 v3, 0x0

    return v3
.end method

.method private shouldUpdateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;)Z
    .locals 3
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 796
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 797
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v0

    .line 798
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 799
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 800
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 801
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getPerAppOverlays()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updateAlarms(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 617
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    const-string/jumbo v1, "alarms"

    .line 618
    const/4 v2, 0x4

    .line 617
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 14
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 633
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lorg/cyanogenmod/internal/util/ThemeUtils;->clearAudibles(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "system"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 635
    :cond_0
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    invoke-static {v11, v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 636
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "There was an error installing the default audio file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v11, 0x0

    return v11

    .line 639
    :cond_1
    const/4 v11, 0x1

    return v11

    .line 642
    :cond_2
    const/4 v9, 0x0

    .line 644
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 654
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 655
    .local v10, "themeCtx":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 656
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 661
    .local v2, "assetList":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v11, v2

    if-nez v11, :cond_4

    .line 662
    :cond_3
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Could not find any audio assets"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v11, 0x0

    return v11

    .line 645
    .end local v2    # "assetList":[Ljava/lang/String;
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "themeCtx":Landroid/content/Context;
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 646
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to update audible "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    const/4 v11, 0x0

    return v11

    .line 657
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .line 658
    .local v5, "e":Ljava/lang/Exception;
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "There was an error getting assets for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    const/4 v11, 0x0

    return v11

    .line 668
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "assetList":[Ljava/lang/String;
    .restart local v3    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v10    # "themeCtx":Landroid/content/Context;
    :cond_4
    const/4 v11, 0x0

    aget-object v1, v2, v11

    .line 669
    .local v1, "asset":Ljava/lang/String;
    invoke-static {v1}, Lorg/cyanogenmod/internal/util/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    return v11

    .line 671
    :cond_5
    const/4 v6, 0x0

    .line 672
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 674
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file:///android_asset/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 675
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 674
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 676
    .local v6, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v8, "outFile":Ljava/io/File;
    invoke-static {v6, v8}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 679
    const/16 v11, 0x1e7

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 678
    invoke-static {v8, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 680
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    iget-object v12, v12, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v11, v8, v0, v12}, Lorg/cyanogenmod/internal/util/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 686
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 688
    const/4 v11, 0x1

    return v11

    .line 681
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v5

    .line 682
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "There was an error installing the new audio file for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    const/4 v11, 0x0

    .line 685
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 686
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 683
    return v11

    .line 684
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 685
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 686
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 684
    throw v11
.end method

.method private updateBootAnim(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->clearBootAnimation()V

    .line 603
    return v5

    .line 607
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 608
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->applyBootAnimation(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    return v5

    .line 609
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Changing boot animation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    return v4
.end method

.method private updateConfiguration(Landroid/content/res/ThemeConfig;)Z
    .locals 6
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 778
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 779
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 782
    .local v4, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 784
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object p1, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 785
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "token":J
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 786
    .restart local v4    # "token":J
    :catch_0
    move-exception v2

    .line 787
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 789
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    return v3

    .line 788
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 789
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    throw v3
.end method

.method private updateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;Z)Z
    .locals 8
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z

    .prologue
    .line 757
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 758
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 761
    .local v6, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 762
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v5, 0x0

    invoke-static {v1, p1, v5, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->createBuilderFrom(Landroid/content/res/Configuration;Lcyanogenmod/themes/ThemeChangeRequest;Ljava/lang/String;Z)Landroid/content/res/ThemeConfig$Builder;

    move-result-object v4

    .line 764
    .local v4, "themeBuilder":Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v4}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v3

    .line 766
    .local v3, "newConfig":Landroid/content/res/ThemeConfig;
    iput-object v3, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 767
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "newConfig":Landroid/content/res/ThemeConfig;
    .end local v4    # "themeBuilder":Landroid/content/res/ThemeConfig$Builder;
    .end local v6    # "token":J
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 768
    .restart local v6    # "token":J
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 771
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    return v5

    .line 770
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 771
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    throw v5
.end method

.method private updateFonts(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 555
    new-instance v8, Ljava/io/File;

    sget-object v10, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 557
    const-string/jumbo v8, "system"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 562
    :try_start_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-virtual {v8, p1, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 563
    .local v7, "themeCtx":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 564
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const-string/jumbo v8, "fonts"

    invoke-virtual {v2, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 569
    .local v1, "assetList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v8, v1

    if-nez v8, :cond_1

    .line 570
    :cond_0
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Could not find any font assets"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v9

    .line 565
    .end local v1    # "assetList":[Ljava/lang/String;
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v7    # "themeCtx":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 566
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There was an error getting assets  for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    return v9

    .line 575
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "assetList":[Ljava/lang/String;
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v7    # "themeCtx":Landroid/content/Context;
    :cond_1
    array-length v10, v1

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v0, v1, v8

    .line 576
    .local v0, "asset":Ljava/lang/String;
    const/4 v4, 0x0

    .line 577
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 580
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file:///android_asset/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 579
    invoke-static {v7, v11}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 581
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    sget-object v11, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v6, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v6, "outFile":Ljava/io/File;
    invoke-static {v4, v6}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 584
    const/16 v11, 0x1e7

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 583
    invoke-static {v6, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 590
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 575
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 585
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 586
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There was an error installing the new fonts for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 590
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 587
    return v9

    .line 588
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 589
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 590
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    throw v8

    .line 596
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "assetList":[Ljava/lang/String;
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v7    # "themeCtx":Landroid/content/Context;
    :cond_2
    const-string/jumbo v8, "sys.refresh_theme"

    const-string/jumbo v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v8, 0x1

    return v8
.end method

.method private updateIcons(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->clearIconCache()V

    .line 541
    :try_start_0
    const-string/jumbo v1, "system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    .line 550
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 544
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Changing icons failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    const/4 v1, 0x0

    return v1
.end method

.method private updateLiveLockScreen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method private updateLockscreen(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->setCustomLockScreenWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 695
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 696
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 696
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 699
    :cond_0
    return v0
.end method

.method private updateNotifications(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 622
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    const-string/jumbo v1, "notifications"

    .line 623
    const/4 v2, 0x2

    .line 622
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateProvider(Lcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 12
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    const/4 v10, 0x0

    .line 517
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 518
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "update_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v2

    .line 520
    .local v2, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "component":Ljava/lang/String;
    const-string/jumbo v7, "value"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v5, "key=?"

    .line 523
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;->componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 524
    .local v3, "selectionArgs":[Ljava/lang/String;
    aget-object v6, v3, v10

    if-eqz v6, :cond_0

    .line 529
    const-string/jumbo v6, "mods_homescreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 530
    const-string/jumbo v6, "component_id"

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    :cond_1
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v0    # "component":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateRingtones(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 627
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "ringtones"

    .line 628
    const/4 v2, 0x1

    .line 627
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateThemeApi()V
    .locals 4

    .prologue
    .line 393
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "theme_prev_boot_api_level"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 394
    invoke-static {v0, v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 396
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 397
    sget-object v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to store latest API level to secure settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    return-void
.end method

.method private updateWallpaper(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 722
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 723
    .local v3, "wm":Landroid/app/WallpaperManager;
    const-string/jumbo v4, "system"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 725
    :try_start_0
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/io/IOException;
    return v5

    .line 729
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 731
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->clear(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 732
    :catch_1
    move-exception v0

    .line 733
    .restart local v0    # "e":Ljava/io/IOException;
    return v5

    .line 736
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    .line 738
    .local v2, "in":Ljava/io/InputStream;
    :try_start_2
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v4}, Lorg/cyanogenmod/internal/util/ImageUtils;->getCroppedWallpaperStream(Ljava/lang/String;JLandroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 739
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 740
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 741
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 742
    return v5

    .line 743
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 744
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 743
    throw v4
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string/jumbo v0, "org.cyanogenmod.theme"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 264
    invoke-super {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;->onBootPhase(I)V

    .line 265
    const/16 v0, 0x226

    if-ne p1, v0, :cond_2

    .line 266
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->isThemeApiUpToDate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The system has been upgraded to a theme new api, checking if currently set theme is compatible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->removeObsoleteThemeOverlayIfExists()V

    .line 270
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateThemeApi()V

    .line 272
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->registerAppsFailureReceiver()V

    .line 273
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->processInstalledThemes()V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 275
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->publishThemesTile()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v1, "cmthemes"

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    .line 250
    return-void
.end method
