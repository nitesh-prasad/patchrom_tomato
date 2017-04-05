.class public abstract Lcyanogenmod/hardware/ILiveDisplayService$Stub;
.super Landroid/os/Binder;
.source "ILiveDisplayService.java"

# interfaces
.implements Lcyanogenmod/hardware/ILiveDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ILiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.ILiveDisplayService"

.field static final TRANSACTION_getColorAdjustment:I = 0x4

.field static final TRANSACTION_getColorTemperature:I = 0x10

.field static final TRANSACTION_getConfig_0:I = 0x1

.field static final TRANSACTION_getDayColorTemperature:I = 0xc

.field static final TRANSACTION_getMode:I = 0x2

.field static final TRANSACTION_getNightColorTemperature:I = 0xe

.field static final TRANSACTION_isAutoContrastEnabled:I = 0x6

.field static final TRANSACTION_isAutomaticOutdoorModeEnabled:I = 0x11

.field static final TRANSACTION_isCABCEnabled:I = 0x8

.field static final TRANSACTION_isColorEnhancementEnabled:I = 0xa

.field static final TRANSACTION_setAutoContrastEnabled:I = 0x7

.field static final TRANSACTION_setAutomaticOutdoorModeEnabled:I = 0x12

.field static final TRANSACTION_setCABCEnabled:I = 0x9

.field static final TRANSACTION_setColorAdjustment:I = 0x5

.field static final TRANSACTION_setColorEnhancementEnabled:I = 0xb

.field static final TRANSACTION_setDayColorTemperature:I = 0xd

.field static final TRANSACTION_setMode:I = 0x3

.field static final TRANSACTION_setNightColorTemperature:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ILiveDisplayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/hardware/ILiveDisplayService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcyanogenmod/hardware/ILiveDisplayService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 43
    :sswitch_0
    const-string/jumbo v7, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v8

    .line 48
    :sswitch_1
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v4

    .line 50
    .local v4, "_result":Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v4, p3, v8}, Lcyanogenmod/hardware/LiveDisplayConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    :goto_0
    return v8

    .line 56
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v4    # "_result":Lcyanogenmod/hardware/LiveDisplayConfig;
    :sswitch_2
    const-string/jumbo v7, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getMode()I

    move-result v3

    .line 64
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v8

    .line 70
    .end local v3    # "_result":I
    :sswitch_3
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setMode(I)Z

    move-result v5

    .line 74
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v5, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v8

    .line 80
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_4
    const-string/jumbo v7, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getColorAdjustment()[F

    move-result-object v6

    .line 82
    .local v6, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 84
    return v8

    .line 88
    .end local v6    # "_result":[F
    :sswitch_5
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 91
    .local v2, "_arg0":[F
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setColorAdjustment([F)Z

    move-result v5

    .line 92
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v8

    .line 98
    .end local v2    # "_arg0":[F
    .end local v5    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isAutoContrastEnabled()Z

    move-result v5

    .line 100
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v5, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v8

    .line 106
    .end local v5    # "_result":Z
    :sswitch_7
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    .line 109
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setAutoContrastEnabled(Z)Z

    move-result v5

    .line 110
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v5, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v8

    .line 108
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .line 116
    .end local v1    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isCABCEnabled()Z

    move-result v5

    .line 118
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v5, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v8

    .line 124
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v1, 0x1

    .line 127
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setCABCEnabled(Z)Z

    move-result v5

    .line 128
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v5, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v8

    .line 126
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_2

    .line 134
    .end local v1    # "_arg0":Z
    :sswitch_a
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isColorEnhancementEnabled()Z

    move-result v5

    .line 136
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v5, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v8

    .line 142
    .end local v5    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v1, 0x1

    .line 145
    .restart local v1    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setColorEnhancementEnabled(Z)Z

    move-result v5

    .line 146
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v5, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v8

    .line 144
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_3

    .line 152
    .end local v1    # "_arg0":Z
    :sswitch_c
    const-string/jumbo v7, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getDayColorTemperature()I

    move-result v3

    .line 154
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return v8

    .line 160
    .end local v3    # "_result":I
    :sswitch_d
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setDayColorTemperature(I)Z

    move-result v5

    .line 164
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v5, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v8

    .line 170
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_e
    const-string/jumbo v7, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getNightColorTemperature()I

    move-result v3

    .line 172
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return v8

    .line 178
    .end local v3    # "_result":I
    :sswitch_f
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setNightColorTemperature(I)Z

    move-result v5

    .line 182
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v5, :cond_d

    move v7, v8

    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return v8

    .line 188
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_10
    const-string/jumbo v7, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getColorTemperature()I

    move-result v3

    .line 190
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return v8

    .line 196
    .end local v3    # "_result":I
    :sswitch_11
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isAutomaticOutdoorModeEnabled()Z

    move-result v5

    .line 198
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v5, :cond_e

    move v7, v8

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    return v8

    .line 204
    .end local v5    # "_result":Z
    :sswitch_12
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    const/4 v1, 0x1

    .line 207
    .restart local v1    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v5

    .line 208
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v5, :cond_f

    move v7, v8

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return v8

    .line 206
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_4

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
