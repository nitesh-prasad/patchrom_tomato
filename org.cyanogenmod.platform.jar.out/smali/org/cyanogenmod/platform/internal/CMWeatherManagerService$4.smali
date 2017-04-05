.class Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;
.super Lcom/android/internal/content/PackageMonitor;
.source "CMWeatherManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->registerPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 414
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "weather_provider_service"

    .line 413
    invoke-static {v8, v9}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "enabledProviderService":Ljava/lang/String;
    if-nez v5, :cond_0

    const/4 v8, 0x0

    return v8

    .line 417
    :cond_0
    const/4 v6, 0x0

    .line 418
    .local v6, "packageChanged":Z
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 419
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v8, 0x0

    array-length v9, p3

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, p3, v8

    .line 420
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 421
    const/4 v6, 0x1

    .line 426
    .end local v1    # "component":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_5

    .line 428
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 430
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->getChangingUserId()I

    move-result v8

    .line 429
    invoke-interface {v7, p1, v8}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    .line 431
    .local v4, "enabled":I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_2

    .line 432
    if-nez v4, :cond_4

    .line 433
    :cond_2
    const/4 v8, 0x0

    return v8

    .line 419
    .end local v4    # "enabled":I
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1    # "component":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "component":Ljava/lang/String;
    .restart local v4    # "enabled":I
    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 438
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 439
    const-string/jumbo v9, "weather_provider_service"

    .line 440
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->getChangingUserId()I

    move-result v10

    .line 439
    const/4 v11, 0x0

    .line 437
    invoke-static {v8, v9, v11, v10}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 441
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Active provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " disabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    .end local v4    # "enabled":I
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    :cond_5
    :goto_1
    const/4 v8, 0x0

    return v8

    .line 444
    :catch_0
    move-exception v3

    .line 445
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Exception trying to look up app enabled settings "

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 446
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 389
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "weather_provider_service"

    .line 388
    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "enabledProviderService":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 392
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 394
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    :cond_2
    :goto_0
    return-void

    .line 397
    :cond_3
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 398
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/ServiceConnection;

    move-result-object v4

    .line 399
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 397
    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 400
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 401
    const-string/jumbo v3, "weather_provider_service"

    .line 402
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->getChangingUserId()I

    move-result v4

    .line 400
    invoke-static {v2, v3, v7, v4}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 403
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to rebind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " after receiving"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 404
    const-string/jumbo v4, " package modified notification. Settings updated."

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_4
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2, v6}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-set1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "weather_provider_service"

    .line 455
    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "enabledProviderService":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 460
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 462
    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 464
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "weather_provider_service"

    .line 465
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->getChangingUserId()I

    move-result v4

    .line 463
    invoke-static {v2, v3, v5, v4}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 466
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2, v5}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V

    .line 454
    return-void
.end method
