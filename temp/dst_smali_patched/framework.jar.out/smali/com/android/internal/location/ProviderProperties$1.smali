.class final Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/location/ProviderProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_0

    const/4 v1, 0x1

    .local v1, "requiresNetwork":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_1

    const/4 v2, 0x1

    .local v2, "requiresSatellite":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_2

    const/4 v3, 0x1

    .local v3, "requiresCell":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_3

    const/4 v4, 0x1

    .local v4, "hasMonetaryCost":Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_4

    const/4 v5, 0x1

    .local v5, "supportsAltitude":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_5

    const/4 v6, 0x1

    .local v6, "supportsSpeed":Z
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_6

    const/4 v7, 0x1

    .local v7, "supportsBearing":Z
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "powerRequirement":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "accuracy":I
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    return-object v0

    .end local v1    # "requiresNetwork":Z
    .end local v2    # "requiresSatellite":Z
    .end local v3    # "requiresCell":Z
    .end local v4    # "hasMonetaryCost":Z
    .end local v5    # "supportsAltitude":Z
    .end local v6    # "supportsSpeed":Z
    .end local v7    # "supportsBearing":Z
    .end local v8    # "powerRequirement":I
    .end local v9    # "accuracy":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "requiresNetwork":Z
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "requiresSatellite":Z
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "requiresCell":Z
    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "hasMonetaryCost":Z
    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "supportsAltitude":Z
    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "supportsSpeed":Z
    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "supportsBearing":Z
    goto :goto_6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method
