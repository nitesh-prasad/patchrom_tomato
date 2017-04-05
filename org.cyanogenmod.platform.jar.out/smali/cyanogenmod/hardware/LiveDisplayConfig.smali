.class public Lcyanogenmod/hardware/LiveDisplayConfig;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/LiveDisplayConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/hardware/LiveDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllModes:Ljava/util/BitSet;

.field private final mCapabilities:Ljava/util/BitSet;

.field private final mDefaultAutoContrast:Z

.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mDefaultDayTemperature:I

.field private final mDefaultMode:I

.field private final mDefaultNightTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcyanogenmod/hardware/LiveDisplayConfig$1;

    invoke-direct {v0}, Lcyanogenmod/hardware/LiveDisplayConfig$1;-><init>()V

    .line 247
    sput-object v0, Lcyanogenmod/hardware/LiveDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11}, Ljava/util/BitSet;-><init>()V

    iput-object v11, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    .line 71
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v9

    .line 72
    .local v9, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v9}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v10

    .line 75
    .local v10, "parcelableVersion":I
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "capabilities":J
    const/4 v7, 0x0

    .line 77
    .local v7, "defaultMode":I
    const/4 v6, -0x1

    .line 78
    .local v6, "defaultDayTemperature":I
    const/4 v8, -0x1

    .line 79
    .local v8, "defaultNightTemperature":I
    const/4 v2, 0x0

    .line 80
    .local v2, "defaultAutoContrast":Z
    const/4 v3, 0x0

    .line 81
    .local v3, "defaultAutoOutdoorMode":Z
    const/4 v4, 0x0

    .line 82
    .local v4, "defaultCABC":Z
    const/4 v5, 0x0

    .line 84
    .local v5, "defaultColorEnhancement":Z
    const/4 v11, 0x6

    if-lt v10, v11, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_1

    const/4 v2, 0x1

    .line 90
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    const/4 v3, 0x1

    .line 91
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    const/4 v4, 0x1

    .line 92
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_4

    const/4 v5, 0x1

    .line 96
    :cond_0
    :goto_3
    new-array v11, v12, [J

    aput-wide v0, v11, v13

    invoke-static {v11}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v11

    iput-object v11, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 97
    iget-object v11, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    const/4 v12, 0x4

    invoke-virtual {v11, v13, v12}, Ljava/util/BitSet;->set(II)V

    .line 98
    iput v7, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    .line 99
    iput v6, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    .line 100
    iput v8, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    .line 101
    iput-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    .line 102
    iput-boolean v3, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    .line 103
    iput-boolean v4, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    .line 104
    iput-boolean v5, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    .line 107
    invoke-virtual {v9}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 69
    return-void

    .line 89
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 91
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 92
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/hardware/LiveDisplayConfig;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;IIIZZZZ)V
    .locals 3
    .param p1, "capabilities"    # Ljava/util/BitSet;
    .param p2, "defaultMode"    # I
    .param p3, "defaultDayTemperature"    # I
    .param p4, "defaultNightTemperature"    # I
    .param p5, "defaultAutoOutdoorMode"    # Z
    .param p6, "defaultAutoContrast"    # Z
    .param p7, "defaultCABC"    # Z
    .param p8, "defaultColorEnhancement"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    .line 58
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 59
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 60
    iput p2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    .line 61
    iput p3, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    .line 62
    iput p4, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    .line 63
    iput-boolean p6, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    .line 64
    iput-boolean p5, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    .line 65
    iput-boolean p7, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    .line 66
    iput-boolean p8, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultAutoContrast()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    return v0
.end method

.method public getDefaultAutoOutdoorMode()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    return v0
.end method

.method public getDefaultCABC()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    return v0
.end method

.method public getDefaultColorEnhancement()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    return v0
.end method

.method public getDefaultDayTemperature()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    return v0
.end method

.method public getDefaultMode()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    return v0
.end method

.method public getDefaultNightTemperature()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    return v0
.end method

.method public hasFeature(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    if-ltz p1, :cond_1

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    .line 158
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 156
    :cond_0
    :goto_1
    return v0

    .line 157
    :cond_1
    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    const/16 v1, 0xf

    if-gt p1, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public hasModeSupport()Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcyanogenmod/hardware/LiveDisplayConfig;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, " defaultMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, " defaultDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, " defaultNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, " defaultAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, " defaultAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, " defaultCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v1, " defaultColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 132
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 135
    .local v1, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    .line 136
    .local v0, "caps":[J
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-wide v2, v0, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 130
    return-void

    .line 136
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v5

    .line 140
    goto :goto_1

    :cond_2
    move v2, v5

    .line 141
    goto :goto_2

    :cond_3
    move v2, v5

    .line 142
    goto :goto_3

    :cond_4
    move v4, v5

    .line 143
    goto :goto_4
.end method
