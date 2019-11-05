.class final Lcom/a/b/au$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/bq",
        "<",
        "Lcom/a/b/ct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/au;


# direct methods
.method constructor <init>(Lcom/a/b/au;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/au$1;->a:Lcom/a/b/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/bp;)V
    .locals 2

    check-cast p1, Lcom/a/b/ct;

    sget-object v0, Lcom/a/b/au$4;->a:[I

    iget v1, p1, Lcom/a/b/ct;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/a/b/au$1;->a:Lcom/a/b/au;

    invoke-virtual {v0}, Lcom/a/b/au;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/au$1$1;

    invoke-direct {v1, p0}, Lcom/a/b/au$1$1;-><init>(Lcom/a/b/au$1;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
