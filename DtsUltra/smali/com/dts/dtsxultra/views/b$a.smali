.class final Lcom/dts/dtsxultra/views/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lcom/dts/dtsxultra/views/b;


# direct methods
.method private constructor <init>(Lcom/dts/dtsxultra/views/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/b$a;->b:Lcom/dts/dtsxultra/views/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dts/dtsxultra/views/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/views/b$a;-><init>(Lcom/dts/dtsxultra/views/b;)V

    return-void
.end method
