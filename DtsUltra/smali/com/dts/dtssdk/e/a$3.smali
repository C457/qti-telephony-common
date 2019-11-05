.class public final Lcom/dts/dtssdk/e/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/e/a;


# direct methods
.method public constructor <init>(Lcom/dts/dtssdk/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/dts/dtssdk/e/a;->f()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v2}, Lcom/dts/dtssdk/e/a;->b(Lcom/dts/dtssdk/e/a;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v2}, Lcom/dts/dtssdk/e/a;->c(Lcom/dts/dtssdk/e/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    iget-object v3, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    iget-object v4, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v4}, Lcom/dts/dtssdk/e/a;->d(Lcom/dts/dtssdk/e/a;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;I)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;[B)[B

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v2}, Lcom/dts/dtssdk/e/a;->e(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :try_start_0
    iget-object v2, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v2}, Lcom/dts/dtssdk/e/a;->f(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    iget-object v3, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    iget-object v4, p0, Lcom/dts/dtssdk/e/a$3;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v4}, Lcom/dts/dtssdk/e/a;->d(Lcom/dts/dtssdk/e/a;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;I)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dts/dtssdk/e/a;->b(Lcom/dts/dtssdk/e/a;[B)[B

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/e/a;->f()Ljava/lang/String;

    return-void
.end method
