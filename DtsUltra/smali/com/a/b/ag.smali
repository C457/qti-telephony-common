.class public final enum Lcom/a/b/ag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/b/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/b/ag;

.field public static final enum b:Lcom/a/b/ag;

.field public static final enum c:Lcom/a/b/ag;

.field public static final enum d:Lcom/a/b/ag;

.field private static final synthetic f:[Lcom/a/b/ag;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/a/b/ag;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/b/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/ag;->a:Lcom/a/b/ag;

    new-instance v0, Lcom/a/b/ag;

    const-string v1, "SESSION_START"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/ag;->b:Lcom/a/b/ag;

    new-instance v0, Lcom/a/b/ag;

    const-string v1, "SESSION_END"

    invoke-direct {v0, v1, v3, v4}, Lcom/a/b/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/ag;->c:Lcom/a/b/ag;

    new-instance v0, Lcom/a/b/ag;

    const-string v1, "APPLICATION_EVENT"

    invoke-direct {v0, v1, v4, v6}, Lcom/a/b/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/ag;->d:Lcom/a/b/ag;

    new-array v0, v6, [Lcom/a/b/ag;

    sget-object v1, Lcom/a/b/ag;->a:Lcom/a/b/ag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/ag;->b:Lcom/a/b/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/ag;->c:Lcom/a/b/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/ag;->d:Lcom/a/b/ag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/b/ag;->f:[Lcom/a/b/ag;

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

    iput p3, p0, Lcom/a/b/ag;->e:I

    return-void
.end method

.method public static a(I)Lcom/a/b/ag;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/a/b/ag;->a:Lcom/a/b/ag;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/a/b/ag;->b:Lcom/a/b/ag;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/a/b/ag;->c:Lcom/a/b/ag;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/a/b/ag;->d:Lcom/a/b/ag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/ag;
    .locals 1

    const-class v0, Lcom/a/b/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/ag;

    return-object v0
.end method

.method public static values()[Lcom/a/b/ag;
    .locals 1

    sget-object v0, Lcom/a/b/ag;->f:[Lcom/a/b/ag;

    invoke-virtual {v0}, [Lcom/a/b/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/b/ag;

    return-object v0
.end method
