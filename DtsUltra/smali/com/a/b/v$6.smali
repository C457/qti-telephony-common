.class final Lcom/a/b/v$6;
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
        "Lcom/a/b/av;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/v;


# direct methods
.method constructor <init>(Lcom/a/b/v;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/v$6;->a:Lcom/a/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/a/b/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/a/b/v$6;->a:Lcom/a/b/v;

    invoke-static {v0}, Lcom/a/b/v;->a(Lcom/a/b/v;)V

    return-void
.end method
