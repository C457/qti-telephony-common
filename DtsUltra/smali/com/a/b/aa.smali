.class public final enum Lcom/a/b/aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/b/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/b/aa;

.field public static final enum b:Lcom/a/b/aa;

.field public static final enum c:Lcom/a/b/aa;

.field public static final enum d:Lcom/a/b/aa;

.field private static final synthetic f:[Lcom/a/b/aa;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/a/b/aa;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/aa;->a:Lcom/a/b/aa;

    new-instance v0, Lcom/a/b/aa;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/aa;->b:Lcom/a/b/aa;

    new-instance v0, Lcom/a/b/aa;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v3, v4}, Lcom/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/aa;->c:Lcom/a/b/aa;

    new-instance v0, Lcom/a/b/aa;

    const-string v1, "PENDING_COMPLETION"

    invoke-direct {v0, v1, v4, v6}, Lcom/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/aa;->d:Lcom/a/b/aa;

    new-array v0, v6, [Lcom/a/b/aa;

    sget-object v1, Lcom/a/b/aa;->a:Lcom/a/b/aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/aa;->b:Lcom/a/b/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/aa;->c:Lcom/a/b/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/aa;->d:Lcom/a/b/aa;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/b/aa;->f:[Lcom/a/b/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/a/b/aa;->e:I

    return-void
.end method

.method public static a(I)Lcom/a/b/aa;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/a/b/aa;->a:Lcom/a/b/aa;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/a/b/aa;->b:Lcom/a/b/aa;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/a/b/aa;->c:Lcom/a/b/aa;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/a/b/aa;->d:Lcom/a/b/aa;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/aa;
    .locals 1

    const-class v0, Lcom/a/b/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/aa;

    return-object v0
.end method

.method public static values()[Lcom/a/b/aa;
    .locals 1

    sget-object v0, Lcom/a/b/aa;->f:[Lcom/a/b/aa;

    invoke-virtual {v0}, [Lcom/a/b/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/b/aa;

    return-object v0
.end method
