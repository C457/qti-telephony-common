.class final Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;

.field c:Z

.field final synthetic d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a:Landroid/os/Handler;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)V

    return-void
.end method

.method private a()V
    .locals 4

    iget-boolean v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->c:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Z)V
    .locals 1

    new-instance v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Z)V

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;

    invoke-direct {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a()V

    return-void
.end method

.method final a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Z)V
    .locals 1

    new-instance v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;Landroid/content/Context;Lcom/dts/dtssdk/a/j;Z)V

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;

    invoke-direct {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a()V

    return-void
.end method
