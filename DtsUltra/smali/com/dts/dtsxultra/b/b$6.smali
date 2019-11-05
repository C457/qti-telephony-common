.class final Lcom/dts/dtsxultra/b/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/a;

.field final synthetic b:Lcom/dts/dtsxultra/b/b;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/b;Lcom/dts/dtssdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/b$6;->a:Lcom/dts/dtssdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/b;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selecting headphone returned error: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->e(Lcom/dts/dtsxultra/b/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->d(Lcom/dts/dtsxultra/b/b;)Landroid/support/v4/app/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/b$6;->a:Lcom/dts/dtssdk/a/a;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->f(Lcom/dts/dtsxultra/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->d(Lcom/dts/dtsxultra/b/b;)Landroid/support/v4/app/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->g(Lcom/dts/dtsxultra/b/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->d(Lcom/dts/dtsxultra/b/b;)Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/b$6;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/b;->g(Lcom/dts/dtsxultra/b/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/b$6;->a:Lcom/dts/dtssdk/a/a;

    iget-object v2, v2, Lcom/dts/dtssdk/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New headphone successfully selected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/b$6;->a:Lcom/dts/dtssdk/a/a;

    iget-object v1, v1, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
