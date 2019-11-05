.class final Lcom/a/b/ab$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/ab;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ab;


# direct methods
.method constructor <init>(Lcom/a/b/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ab$6;->a:Lcom/a/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    invoke-static {}, Lcom/a/b/ab;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/a/b/ab;->e:Lcom/a/b/bo;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/a/b/ab;->e()V

    :cond_0
    sget-object v1, Lcom/a/b/ab;->e:Lcom/a/b/bo;

    invoke-virtual {v1, v0}, Lcom/a/b/bo;->a(Ljava/lang/Object;)V

    return-void
.end method
