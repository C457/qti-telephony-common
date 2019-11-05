.class final Lcom/dts/dtssdk/a/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/b;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/b;III)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/a/b$b;->a:Lcom/dts/dtssdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/dts/dtssdk/a/b$b;->c:I

    iput p2, p0, Lcom/dts/dtssdk/a/b$b;->b:I

    iput p4, p0, Lcom/dts/dtssdk/a/b$b;->d:I

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Line-Out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dts/dtssdk/a/b$b;->b:I

    :goto_0
    return v0

    :cond_0
    const-string v0, "Bluetooth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dts/dtssdk/a/b$b;->c:I

    goto :goto_0

    :cond_1
    const-string v0, "USB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dts/dtssdk/a/b$b;->d:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
