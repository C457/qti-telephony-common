.class public Lcom/dts/dtssdk/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/dts/dtssdk/a/a/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dts/dtssdk/a/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dts/dtssdk/a/i$1;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/i$1;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/a/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/a/i;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/dts/dtssdk/a/b$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dts/dtssdk/a/b$d;->j:I

    iput v0, p0, Lcom/dts/dtssdk/a/i;->a:I

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/i;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/dts/dtssdk/a/i;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
