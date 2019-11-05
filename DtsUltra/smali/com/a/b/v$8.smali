.class final Lcom/a/b/v$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/bq",
        "<",
        "Lcom/a/b/az;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/v;


# direct methods
.method constructor <init>(Lcom/a/b/v;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/v$8;->a:Lcom/a/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/a/b/bp;)V
    .locals 1

    check-cast p1, Lcom/a/b/az;

    iget-boolean v0, p1, Lcom/a/b/az;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/v$8;->a:Lcom/a/b/v;

    invoke-static {v0}, Lcom/a/b/v;->a(Lcom/a/b/v;)V

    :cond_0
    return-void
.end method
