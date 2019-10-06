.class public final Lcom/qti/wifidbreceiver/APSpecialInfo;
.super Ljava/lang/Object;
.source "APSpecialInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mInfo:I

.field public mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/qti/wifidbreceiver/APSpecialInfo$1;

    invoke-direct {v0}, Lcom/qti/wifidbreceiver/APSpecialInfo$1;-><init>()V

    sput-object v0, Lcom/qti/wifidbreceiver/APSpecialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APSpecialInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APSpecialInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wifidbreceiver/APSpecialInfo$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wifidbreceiver/APSpecialInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APSpecialInfo;->mMacAddress:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APSpecialInfo;->mInfo:I

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    iget-object v0, p0, Lcom/qti/wifidbreceiver/APSpecialInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/qti/wifidbreceiver/APSpecialInfo;->mInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
