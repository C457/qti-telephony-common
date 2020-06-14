.class final Lcom/dts/dtsxultra/b/i$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/c",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/i;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/i;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/i;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for accessories returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->d(Lcom/dts/dtsxultra/b/i;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->b(Lcom/dts/dtsxultra/b/i;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/views/a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/dts/dtsxultra/b/i$6$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/i$6$1;-><init>(Lcom/dts/dtsxultra/b/i$6;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->b(Lcom/dts/dtsxultra/b/i;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dts/dtsxultra/views/a;->a(Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$6;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->e(Lcom/dts/dtsxultra/b/i;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/b/i;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Branded headphone was not found in the datastore! Not adding anything."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
