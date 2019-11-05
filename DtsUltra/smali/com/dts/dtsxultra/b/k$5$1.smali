.class final Lcom/dts/dtsxultra/b/k$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/k$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/k$5;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/k$5;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$5$1;->a:Lcom/dts/dtsxultra/b/k$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$5$1;->a:Lcom/dts/dtsxultra/b/k$5;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k$5;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->i(Lcom/dts/dtsxultra/b/k;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$5$1;->a:Lcom/dts/dtsxultra/b/k$5;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k$5;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->i(Lcom/dts/dtsxultra/b/k;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$5$1;->a:Lcom/dts/dtsxultra/b/k$5;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k$5;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dts/dtsxultra/b/k;->a(Lcom/dts/dtsxultra/b/k;Lcom/dts/dtssdk/util/a;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
