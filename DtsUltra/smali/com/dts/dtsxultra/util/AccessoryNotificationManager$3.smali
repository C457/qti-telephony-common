.class final Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/util/a;

.field final synthetic b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;->a:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting content mode failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DTS returned error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

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
    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;->a:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtssdk/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting stereo preference selection failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/n;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/a/n;

    goto :goto_0
.end method
