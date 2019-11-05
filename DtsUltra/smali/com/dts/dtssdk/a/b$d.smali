.class final Lcom/dts/dtssdk/a/b$d;
.super Lcom/dts/dtssdk/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/dts/dtssdk/a/b;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/a/b$d;->c:Lcom/dts/dtssdk/a/b;

    invoke-direct {p0}, Lcom/dts/dtssdk/a/d;-><init>()V

    return-void
.end method
