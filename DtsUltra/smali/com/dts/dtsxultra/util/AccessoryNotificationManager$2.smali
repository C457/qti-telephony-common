.class final Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field final synthetic b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/util/a;Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->a:Lcom/dts/dtssdk/util/a;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iput-object p3, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/a;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting headphone selection failed."

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
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->a:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->c:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->d:Z

    invoke-virtual {v0, v1, p2, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->a:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->a:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->a:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;

    goto :goto_1
.end method
