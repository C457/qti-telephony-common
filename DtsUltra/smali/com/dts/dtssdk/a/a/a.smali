.class public Lcom/dts/dtssdk/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/a/a/a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dts/dtssdk/a/a/a;->a:I

    iput-object p2, p0, Lcom/dts/dtssdk/a/a/a;->b:Ljava/lang/String;

    return-void
.end method
