.class final Lcom/dts/dtsxultra/b/h$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dts/dtsxultra/b/h$a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/h$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/h$a$1;->b:Lcom/dts/dtsxultra/b/h$a;

    iput p2, p0, Lcom/dts/dtsxultra/b/h$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$a$1;->b:Lcom/dts/dtsxultra/b/h$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/h$a;->c:Ljava/util/HashSet;

    iget v1, p0, Lcom/dts/dtsxultra/b/h$a$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget v0, p0, Lcom/dts/dtsxultra/b/h$a$1;->a:I

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$a$1;->b:Lcom/dts/dtsxultra/b/h$a;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/h$a;->b:[I

    iget v2, p0, Lcom/dts/dtsxultra/b/h$a$1;->a:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(II)Lcom/dts/dtssdk/f/a;

    return-void
.end method
