.class final Lcom/dts/dtssdk/b/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/b/c$a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/b/c$a;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/b/c$a$1;->a:Lcom/dts/dtssdk/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtssdk/b/c$a$1;->a:Lcom/dts/dtssdk/b/c$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dts/dtssdk/b/c$a;->c:Z

    invoke-static {}, Lcom/dts/dtssdk/b/c;->c()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/b/c$a$1;->a:Lcom/dts/dtssdk/b/c$a;

    iget-object v1, v1, Lcom/dts/dtssdk/b/c$a;->b:[I

    invoke-static {v0, v1}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c;[I)V

    return-void
.end method
