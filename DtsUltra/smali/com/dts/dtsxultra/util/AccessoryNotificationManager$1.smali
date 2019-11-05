.class final Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->c:Z

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
    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;->c:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Z)V

    goto :goto_0
.end method
