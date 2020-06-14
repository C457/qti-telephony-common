.class final Lcom/dts/dtsxultra/receivers/EventReceiver$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/receivers/EventReceiver$3;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/receivers/EventReceiver$3;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/receivers/EventReceiver$3;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$3$2;->a:Lcom/dts/dtsxultra/receivers/EventReceiver$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth accessory save successfully in database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while saving bluetooth accessory in database successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
