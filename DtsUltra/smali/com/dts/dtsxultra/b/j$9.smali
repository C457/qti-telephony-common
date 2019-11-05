.class final Lcom/dts/dtsxultra/b/j$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/j;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$9;->a:Lcom/dts/dtsxultra/b/j;

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

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$9;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$9;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->y(Lcom/dts/dtsxultra/b/j;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$9;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j$9;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/j;->k(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/util/a;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    :cond_0
    return-void
.end method
