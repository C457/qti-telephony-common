.class final Lcom/dts/dtssdk/a/b$e;
.super Lcom/dts/dtssdk/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/dts/dtssdk/a/b;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtssdk/a/b$e;->e:Lcom/dts/dtssdk/a/b;

    invoke-direct {p0}, Lcom/dts/dtssdk/a/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtssdk/a/b$e;->c:I

    return-void
.end method
