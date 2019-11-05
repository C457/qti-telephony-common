.class public final Lcom/dts/dtssdk/e/a$1;
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

    iput-object p1, p0, Lcom/dts/dtssdk/e/a$1;->a:Lcom/dts/dtssdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a$1;->a:Lcom/dts/dtssdk/e/a;

    int-to-float v2, v1

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/dts/dtssdk/e/a;->f()Ljava/lang/String;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IllegalStateException"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "InterruptedException"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/dts/dtssdk/e/a$1;->a:Lcom/dts/dtssdk/e/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;F)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    return-void

    :catch_2
    move-exception v0

    const-string v1, "IllegalStateException"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
