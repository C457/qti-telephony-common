.class final Lcom/a/b/cq$1;
.super Ljava/io/DataOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/cq;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cq;


# direct methods
.method constructor <init>(Lcom/a/b/cq;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cq$1;->a:Lcom/a/b/cq;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
