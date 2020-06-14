.class final Lcom/dts/dtsxultra/b/g$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/g;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/a",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/util/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/dts/dtsxultra/b/g;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/g;Lcom/dts/dtssdk/util/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/g$6;->a:Lcom/dts/dtssdk/util/a;

    iput-boolean p3, p0, Lcom/dts/dtsxultra/b/g$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/dts/dtssdk/a/a;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/g;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/g;->U()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for accessories returned error: "

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->a:Lcom/dts/dtssdk/util/a;

    invoke-static {v0, v1, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/g$6;->a:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/g;->ad:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/dts/dtsxultra/b/g;->U()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Getting stereo preference failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtsxultra/b/g;->U()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error for Stereo Preference | "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/g$6;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->a:Lcom/dts/dtssdk/util/a;

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/n;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/g;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->a:Lcom/dts/dtssdk/util/a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->a:Lcom/dts/dtssdk/util/a;

    sget-object v2, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/dts/dtsxultra/b/g$6;->c:Lcom/dts/dtsxultra/b/g;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/UsbConnectionNotificationManager;->a(Landroid/content/Context;)V

    goto :goto_1
.end method
