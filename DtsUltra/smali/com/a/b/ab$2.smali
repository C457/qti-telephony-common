.class final Lcom/a/b/ab$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/ab;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/cr",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/a/b/ac;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/b/cp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/b/cp",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ac;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/b/co;

    new-instance v1, Lcom/a/b/ac$a;

    invoke-direct {v1}, Lcom/a/b/ac$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/b/co;-><init>(Lcom/a/b/cp;)V

    return-object v0
.end method
