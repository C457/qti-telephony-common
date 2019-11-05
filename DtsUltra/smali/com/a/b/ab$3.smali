.class final Lcom/a/b/ab$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/ab;->a(Lcom/a/b/ac;)V
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

    iput-object p1, p0, Lcom/a/b/ab$3;->a:Lcom/a/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/a/b/ab$3;->a:Lcom/a/b/ab;

    invoke-static {v0}, Lcom/a/b/ab;->a(Lcom/a/b/ab;)V

    return-void
.end method
