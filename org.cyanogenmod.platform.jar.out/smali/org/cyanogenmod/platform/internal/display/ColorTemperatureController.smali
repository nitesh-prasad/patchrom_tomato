.class public Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
.super Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.source "ColorTemperatureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;
    }
.end annotation


# static fields
.field private static final DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

.field private static final DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x36ee80L


# instance fields
.field private mColorTemperature:I

.field private mDayTemperature:I

.field private final mDefaultDayTemperature:I

.field private final mDefaultNightTemperature:I

.field private final mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

.field private mNightTemperature:I

.field private final mTransitionRunnable:Ljava/lang/Runnable;

.field private final mUseTemperatureAdjustment:Z


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 53
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    .line 56
    const-string/jumbo v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "displayHardware"    # Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 130
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;-><init>(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    .line 62
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->hasColorAdjustment()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    .line 64
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x3f070001

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 66
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x3f070002

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 59
    return-void
.end method

.method private static adj(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "sunset"    # J
    .param p4, "sunrise"    # J

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x4a5bba00    # 3600000.0f

    const-wide/32 v4, 0x36ee80

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 194
    cmp-long v0, p2, v8

    if-ltz v0, :cond_0

    cmp-long v0, p4, v8

    if-gez v0, :cond_1

    .line 196
    :cond_0
    return v3

    .line 195
    :cond_1
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    add-long v0, p4, v4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 199
    add-long v0, p2, v4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 201
    sub-long v0, p0, p2

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 200
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 204
    :cond_2
    cmp-long v0, p0, p4

    if-ltz v0, :cond_3

    .line 206
    add-long v0, p4, v4

    sub-long/2addr v0, p0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 205
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 209
    :cond_3
    return v2
.end method

.method private getTwilightK()I
    .locals 9

    .prologue
    .line 219
    const/high16 v6, 0x3f800000    # 1.0f

    .line 220
    .local v6, "adjustment":F
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getTwilight()Lcom/android/server/twilight/TwilightState;

    move-result-object v7

    .line 222
    .local v7, "twilight":Lcom/android/server/twilight/TwilightState;
    if-eqz v7, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    .local v0, "now":J
    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->adj(JJJ)F

    move-result v8

    .line 225
    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->adj(JJJ)F

    move-result v2

    .line 224
    mul-float v6, v8, v2

    .line 228
    .end local v0    # "now":J
    :cond_0
    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    int-to-float v2, v2

    iget v3, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private isTransitioning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 139
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    if-eq v1, v2, :cond_0

    .line 140
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0
.end method

.method private declared-synchronized setDisplayTemperature(I)V
    .locals 4
    .param p1, "temperature"    # I

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    iput p1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 175
    invoke-static {p1}, Lcyanogenmod/util/ColorUtils;->temperatureToRGB(I)[F

    move-result-object v0

    .line 176
    .local v0, "rgb":[F
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->setAdditionalAdjustment([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 178
    const-string/jumbo v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjust display temperature to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 172
    return-void

    .end local v0    # "rgb":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateColorTemperature()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 148
    .local v1, "temperature":I
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getMode()I

    move-result v0

    .line 150
    .local v0, "mode":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isLowPowerMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    :cond_0
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 158
    :cond_1
    :goto_0
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 159
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateColorTemperature mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string/jumbo v4, " temperature="

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string/jumbo v4, " mColorTemperature="

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    iget v4, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->setDisplayTemperature(I)V

    .line 165
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isTransitioning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 143
    return-void

    .end local v0    # "mode":I
    .end local v1    # "temperature":I
    :cond_4
    monitor-exit p0

    .line 145
    return-void

    .line 152
    .restart local v0    # "mode":I
    .restart local v1    # "temperature":I
    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 153
    :try_start_1
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    goto :goto_0

    .line 154
    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 155
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getTwilightK()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "mode":I
    .end local v1    # "temperature":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 121
    const-string/jumbo v0, "ColorTemperatureController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    const-string/jumbo v0, "  ColorTemperatureController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    isTransitioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isTransitioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 89
    :cond_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    return v0
.end method

.method getColorTemperature()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    return v0
.end method

.method getDayColorTemperature()I
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "display_temperature_day"

    .line 245
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 244
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getDefaultDayTemperature()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    return v0
.end method

.method getDefaultNightTemperature()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    return v0
.end method

.method getNightColorTemperature()I
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "display_temperature_night"

    .line 254
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 253
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onScreenStateChanged()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 98
    return-void
.end method

.method protected declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 109
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    .line 115
    :cond_3
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 108
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 77
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->registerSettings([Landroid/net/Uri;)V

    .line 71
    return-void
.end method

.method protected onTwilightUpdated()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 103
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 93
    return-void
.end method

.method setDayColorTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 249
    const-string/jumbo v0, "display_temperature_day"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->putInt(Ljava/lang/String;I)V

    .line 248
    return-void
.end method

.method setNightColorTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 258
    const-string/jumbo v0, "display_temperature_night"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->putInt(Ljava/lang/String;I)V

    .line 257
    return-void
.end method
