.class final Lcom/dts/dtsxultra/b/p$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/p$8;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/p$8;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/p$8;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/p$8$1;->a:Lcom/dts/dtsxultra/b/p$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/dts/dtssdk/a/a;

    check-cast p2, Lcom/dts/dtssdk/a/a;

    iget-object v0, p1, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
