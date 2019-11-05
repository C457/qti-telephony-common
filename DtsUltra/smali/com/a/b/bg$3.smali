.class final Lcom/a/b/bg$3;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/bg;


# direct methods
.method constructor <init>(Lcom/a/b/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/bg$3;->a:Lcom/a/b/bg;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/a/b/ay;->a()Lcom/a/b/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/ay;->d()V

    return-void
.end method
