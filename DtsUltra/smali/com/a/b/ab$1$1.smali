.class final Lcom/a/b/ab$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ab$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ab$1;


# direct methods
.method constructor <init>(Lcom/a/b/ab$1;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ab$1$1;->a:Lcom/a/b/ab$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/a/b/ad;->a()Lcom/a/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/ad;->b()V

    return-void
.end method
