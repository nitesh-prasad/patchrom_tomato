.class public Lcyanogenmod/hardware/LiveDisplayManager;
.super Ljava/lang/Object;
.source "LiveDisplayManager.java"


# static fields
.field public static final FEATURE_AUTO_CONTRAST:I = 0xb

.field public static final FEATURE_CABC:I = 0xa

.field public static final FEATURE_COLOR_ADJUSTMENT:I = 0xd

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0xc

.field public static final FEATURE_DISPLAY_MODES:I = 0xf

.field public static final FEATURE_FIRST:I = 0xa

.field public static final FEATURE_LAST:I = 0xf

.field public static final FEATURE_MANAGED_OUTDOOR_MODE:I = 0xe

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_DAY:I = 0x4

.field public static final MODE_FIRST:I = 0x0

.field public static final MODE_LAST:I = 0x4

.field public static final MODE_NIGHT:I = 0x1

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_OUTDOOR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field private static sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

.field private static sService:Lcyanogenmod/hardware/ILiveDisplayService;


# instance fields
.field private final mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 124
    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    .line 128
    :goto_0
    invoke-static {}, Lcyanogenmod/hardware/LiveDisplayManager;->getService()Lcyanogenmod/hardware/ILiveDisplayService;

    move-result-object v2

    sput-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 131
    const-string/jumbo v3, "org.cyanogenmod.livedisplay"

    .line 130
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :goto_1
    :try_start_0
    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    .line 139
    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    if-nez v2, :cond_2

    .line 140
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to get LiveDisplay configuration!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to fetch LiveDisplay configuration!"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 126
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iput-object p1, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 132
    :cond_1
    const-string/jumbo v2, "LiveDisplay"

    const-string/jumbo v3, "Unable to get LiveDisplayService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :cond_2
    return-void
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    if-nez v0, :cond_0

    .line 177
    const-string/jumbo v0, "LiveDisplay"

    const-string/jumbo v1, "not connected to CMHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcyanogenmod/hardware/LiveDisplayManager;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-direct {v0, p0}, Lcyanogenmod/hardware/LiveDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

    .line 156
    :cond_0
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService()Lcyanogenmod/hardware/ILiveDisplayService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    if-eqz v1, :cond_0

    .line 162
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    return-object v1

    .line 164
    :cond_0
    const-string/jumbo v1, "cmlivedisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 166
    invoke-static {v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ILiveDisplayService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    .line 167
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    return-object v1

    .line 169
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getColorAdjustment()[F
    .locals 2

    .prologue
    .line 392
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getColorAdjustment()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 397
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 307
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getDayColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getMode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getNightColorTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getNightColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isAutoContrastEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isAutoContrastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isAutomaticOutdoorModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isCABCEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isCABCEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isColorEnhancementEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isColorEnhancementEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setAutoContrastEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setAutomaticOutdoorModeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setCABCEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setCABCEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setColorAdjustment([F)Z
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    const/4 v1, 0x0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setColorAdjustment([F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 294
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setColorEnhancementEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setDayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    const/4 v1, 0x0

    .line 321
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setDayColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setNightColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    const/4 v1, 0x0

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setNightColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
