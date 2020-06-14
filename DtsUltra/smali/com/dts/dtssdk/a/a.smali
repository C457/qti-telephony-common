.class public final Lcom/dts/dtssdk/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/a/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/dts/dtssdk/a/i;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Lcom/dts/dtssdk/a/a$a;

.field public h:I

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dts/dtssdk/a/a$1;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/a$1;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/a/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtssdk/a/a;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/a/a;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    const-class v0, Lcom/dts/dtssdk/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/i;

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->a:Lcom/dts/dtssdk/a/a$a;

    :goto_0
    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dts/dtssdk/a/a;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/a/a;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/a/a;->l:I

    return-void

    :pswitch_0
    sget-object v0, Lcom/dts/dtssdk/a/a$a;->b:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/dts/dtssdk/a/a$a;->c:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/dts/dtssdk/a/a$a;->d:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/dts/dtssdk/a/a$a;->e:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;I)V

    return-void
.end method

.method constructor <init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtssdk/a/a;->h:I

    iput-object p2, p0, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/dts/dtssdk/a/b$g;->j:I

    iput v0, p0, Lcom/dts/dtssdk/a/a;->a:I

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/dts/dtssdk/a/b;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    iget-wide v0, p1, Lcom/dts/dtssdk/a/b$g;->g:J

    iput-wide v0, p0, Lcom/dts/dtssdk/a/a;->j:J

    iget v0, p1, Lcom/dts/dtssdk/a/b$g;->h:I

    iput v0, p0, Lcom/dts/dtssdk/a/a;->k:I

    iput p3, p0, Lcom/dts/dtssdk/a/a;->l:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    iget-object v0, v0, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/dts/dtssdk/c/a",
            "<[B>;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    const-string v2, "IMAGE_SMALL"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    const-string v2, "IMAGE_LARGE"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    const-string v2, "IMAGE_MEDIUM"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/dts/dtssdk/a/a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    sget-object v1, Lcom/dts/dtssdk/a/a$2;->a:[I

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/a$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/dts/dtssdk/a/a;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/dts/dtssdk/a/a;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/dts/dtssdk/a/a;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
