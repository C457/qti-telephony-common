.class final Lcom/dts/dtssdk/a/b$f;
.super Lcom/dts/dtssdk/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/b;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/a/b$f;->a:Lcom/dts/dtssdk/a/b;

    invoke-direct {p0}, Lcom/dts/dtssdk/a/d;-><init>()V

    return-void
.end method
