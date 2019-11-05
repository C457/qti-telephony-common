.class public final Lcom/dts/dtssdk/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dts/dtssdk/a/l$1;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/l$1;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/a/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/a/l;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dts/dtssdk/a/l;->f:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/a/l;->g:I

    return-void
.end method

.method constructor <init>(Lcom/dts/dtssdk/a/b$g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dts/dtssdk/a/b$g;->j:I

    iput v0, p0, Lcom/dts/dtssdk/a/l;->d:I

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    iget-wide v0, p1, Lcom/dts/dtssdk/a/b$g;->g:J

    iput-wide v0, p0, Lcom/dts/dtssdk/a/l;->f:J

    iget v0, p1, Lcom/dts/dtssdk/a/b$g;->h:I

    iput v0, p0, Lcom/dts/dtssdk/a/l;->g:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/dts/dtssdk/a/l;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/dts/dtssdk/a/l;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/dts/dtssdk/a/l;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
