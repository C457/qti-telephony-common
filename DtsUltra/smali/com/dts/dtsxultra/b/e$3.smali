.class final Lcom/dts/dtsxultra/b/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/j;

.field final synthetic b:Lcom/dts/dtsxultra/b/e;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/e;Lcom/dts/dtssdk/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/e$3;->b:Lcom/dts/dtsxultra/b/e;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/e$3;->a:Lcom/dts/dtssdk/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$3;->b:Lcom/dts/dtsxultra/b/e;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/e;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/e;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting content mode returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$3;->b:Lcom/dts/dtsxultra/b/e;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/e;->d(Lcom/dts/dtsxultra/b/e;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$3;->b:Lcom/dts/dtsxultra/b/e;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/e;->e(Lcom/dts/dtsxultra/b/e;)Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/e$3;->a:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/e;->R()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New content mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/e$3;->a:Lcom/dts/dtssdk/a/j;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
