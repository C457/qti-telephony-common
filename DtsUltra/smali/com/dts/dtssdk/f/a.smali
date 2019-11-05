.class public final Lcom/dts/dtssdk/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/f/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/dts/dtssdk/f/a$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dts/dtssdk/f/a$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a$a;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v0, Lcom/dts/dtssdk/f/a$1;->a:[I

    iget-object v1, p0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1}, Lcom/dts/dtssdk/f/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    return-void

    :pswitch_0
    const-string v0, "Result successful."

    goto :goto_0

    :pswitch_1
    const-string v0, "The received arguments are invalid."

    goto :goto_0

    :pswitch_2
    const-string v0, "Transaction error."

    goto :goto_0

    :pswitch_3
    const-string v0, "A file was not found in the system."

    goto :goto_0

    :pswitch_4
    const-string v0, "DTS service does not seem to be running"

    goto :goto_0

    :pswitch_5
    const-string v0, "System out of memory error."

    goto :goto_0

    :pswitch_6
    const-string v0, "Insufficient buffer size."

    goto :goto_0

    :pswitch_7
    const-string v0, "System does not support the request."

    goto :goto_0

    :pswitch_8
    const-string v0, "Decrypting crucial data failed."

    goto :goto_0

    :pswitch_9
    const-string v0, "Unknown Error."

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public constructor <init>(Lcom/dts/dtssdk/o;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/o;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->y:Lcom/dts/dtssdk/f/a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
