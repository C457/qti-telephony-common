.class final Lcom/dts/dtssdk/a/b$c;
.super Lcom/dts/dtssdk/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:[B

.field d:I

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/dts/dtssdk/a/b;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/a/b$c;->f:Lcom/dts/dtssdk/a/b;

    invoke-direct {p0}, Lcom/dts/dtssdk/a/d;-><init>()V

    return-void
.end method
