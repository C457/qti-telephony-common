.class final Lcom/dts/dtssdk/a/b$g;
.super Lcom/dts/dtssdk/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:J

.field h:I

.field final synthetic i:Lcom/dts/dtssdk/a/b;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtssdk/a/b$g;->i:Lcom/dts/dtssdk/a/b;

    invoke-direct {p0}, Lcom/dts/dtssdk/a/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtssdk/a/b$g;->b:I

    return-void
.end method
