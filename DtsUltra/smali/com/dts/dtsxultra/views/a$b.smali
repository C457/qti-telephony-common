.class Lcom/dts/dtsxultra/views/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lcom/dts/dtsxultra/views/a;


# direct methods
.method private constructor <init>(Lcom/dts/dtsxultra/views/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a$b;->b:Lcom/dts/dtsxultra/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dts/dtsxultra/views/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/views/a$b;-><init>(Lcom/dts/dtsxultra/views/a;)V

    return-void
.end method
