.class public final Lcom/qti/wifidbprovider/APScan;
.super Ljava/lang/Object;
.source "APScan.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbprovider/APScan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChannelNumber:I

.field public mDeltaTime:I

.field public mMacAddress:Ljava/lang/String;

.field public mRssi:F

.field public mSSID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/qti/wifidbprovider/APScan$1;

    invoke-direct {v0}, Lcom/qti/wifidbprovider/APScan$1;-><init>()V

    sput-object v0, Lcom/qti/wifidbprovider/APScan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/qti/wifidbprovider/APScan;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbprovider/APScan$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wifidbprovider/APScan$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/qti/wifidbprovider/APScan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbprovider/APScan;->mMacAddress:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbprovider/APScan;->mRssi:F

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbprovider/APScan;->mDeltaTime:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbprovider/APScan;->mSSID:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbprovider/APScan;->mChannelNumber:I

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget-object v0, p0, Lcom/qti/wifidbprovider/APScan;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/qti/wifidbprovider/APScan;->mRssi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget v0, p0, Lcom/qti/wifidbprovider/APScan;->mDeltaTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/qti/wifidbprovider/APScan;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 46
    iget v0, p0, Lcom/qti/wifidbprovider/APScan;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
