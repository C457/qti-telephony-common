.class final Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/c",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for accessory UUID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Querying for accessory UUID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned empty list or more than one. Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method
