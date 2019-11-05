.class final Lcom/dts/dtsxultra/b/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/a;

.field final synthetic b:Lcom/dts/dtssdk/a/a;

.field final synthetic c:Lcom/dts/dtsxultra/b/d;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/d;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/d$5;->a:Lcom/dts/dtssdk/a/a;

    iput-object p3, p0, Lcom/dts/dtsxultra/b/d$5;->b:Lcom/dts/dtssdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/d;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/d;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set accessory failed with result: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/d;->d(Lcom/dts/dtsxultra/b/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/b/d;->R()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set accessory completed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d$5;->a:Lcom/dts/dtssdk/a/a;

    iget-object v1, v1, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/d;->g(Lcom/dts/dtsxultra/b/d;)Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/d;->b(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/d$5;->b:Lcom/dts/dtssdk/a/a;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/d;->e()Landroid/support/v4/app/f;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/c/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d$5;->c:Lcom/dts/dtsxultra/b/d;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/d;->b(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/d$5;->a:Lcom/dts/dtssdk/a/a;

    invoke-interface {v0, v1, v2}, Lcom/dts/dtsxultra/c/a;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/dts/dtsxultra/b/d;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hosting activity does not implement BrandedHeadphoneSelectionListener. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
