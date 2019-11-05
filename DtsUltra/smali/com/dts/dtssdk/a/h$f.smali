.class final Lcom/dts/dtssdk/a/h$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Lcom/dts/dtssdk/f/a;

.field final synthetic d:Lcom/dts/dtssdk/a/h;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/a/h$f;->d:Lcom/dts/dtssdk/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    return-void
.end method
