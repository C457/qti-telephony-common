.class final Lcom/a/b/ch$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ch;
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
        "Lcom/a/b/ci;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ch;


# direct methods
.method constructor <init>(Lcom/a/b/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ch$6;->a:Lcom/a/b/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/b/cp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/b/cp",
            "<",
            "Lcom/a/b/ci;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/b/ci$a;

    invoke-direct {v0}, Lcom/a/b/ci$a;-><init>()V

    return-object v0
.end method
