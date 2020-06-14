.class final Lcom/dts/dtsxultra/receivers/EventReceiver$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/receivers/EventReceiver$3;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/dts/dtssdk/a/j;

.field final synthetic b:Lcom/dts/dtsxultra/receivers/EventReceiver$3;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/receivers/EventReceiver$3;[Lcom/dts/dtssdk/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$3$1;->b:Lcom/dts/dtsxultra/receivers/EventReceiver$3;

    iput-object p2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$3$1;->a:[Lcom/dts/dtssdk/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$3$1;->a:[Lcom/dts/dtssdk/a/j;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method
