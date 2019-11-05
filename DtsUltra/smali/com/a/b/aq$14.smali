.class final Lcom/a/b/aq$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/aq;->a(Ljava/lang/String;Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/a/b/aq;


# direct methods
.method constructor <init>(Lcom/a/b/aq;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/aq$14;->c:Lcom/a/b/aq;

    iput-object p2, p0, Lcom/a/b/aq$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/b/aq$14;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->a:Lcom/a/b/v;

    iget-object v1, p0, Lcom/a/b/aq$14;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/b/aq$14;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/v;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
