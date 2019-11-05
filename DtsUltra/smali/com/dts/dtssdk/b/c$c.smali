.class public final enum Lcom/dts/dtssdk/b/c$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/b/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtssdk/b/c$c;

.field public static final enum b:Lcom/dts/dtssdk/b/c$c;

.field public static final enum c:Lcom/dts/dtssdk/b/c$c;

.field public static final enum d:Lcom/dts/dtssdk/b/c$c;

.field public static final enum e:Lcom/dts/dtssdk/b/c$c;

.field public static final enum f:Lcom/dts/dtssdk/b/c$c;

.field public static final enum g:Lcom/dts/dtssdk/b/c$c;

.field public static final enum h:Lcom/dts/dtssdk/b/c$c;

.field public static final enum i:Lcom/dts/dtssdk/b/c$c;

.field public static final enum j:Lcom/dts/dtssdk/b/c$c;

.field public static final enum k:Lcom/dts/dtssdk/b/c$c;

.field public static final enum l:Lcom/dts/dtssdk/b/c$c;

.field public static final enum m:Lcom/dts/dtssdk/b/c$c;

.field public static final enum n:Lcom/dts/dtssdk/b/c$c;

.field public static final enum o:Lcom/dts/dtssdk/b/c$c;

.field private static final synthetic p:[Lcom/dts/dtssdk/b/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "DTS_ON"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->a:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "DTS_OFF"

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->b:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "GEQ_ON"

    invoke-direct {v0, v1, v5}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->c:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "GEQ_OFF"

    invoke-direct {v0, v1, v6}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->d:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "ACCESSORY_SELECTED"

    invoke-direct {v0, v1, v7}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->e:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "STEREO_PREFERENCE_SELECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->f:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "MULTI_CHANNEL_ROOM_SELECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->g:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "GEQ_CHANGED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->h:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "LISTENING_TEST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->i:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "AUDIO_ROUTE_CHANGED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->j:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "TEST_WEB_PERFORMANCE_URL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->k:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "BLUETOOTH_ACCESSORY_ASSOCIATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->l:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "USB_ACCESSORY_ASSOCIATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->m:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "LOUDNESS_LEVELING_CONTROL_ON"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->n:Lcom/dts/dtssdk/b/c$c;

    new-instance v0, Lcom/dts/dtssdk/b/c$c;

    const-string v1, "LOUDNESS_LEVELING_CONTROL_OFF"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->o:Lcom/dts/dtssdk/b/c$c;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/dts/dtssdk/b/c$c;

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->a:Lcom/dts/dtssdk/b/c$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->b:Lcom/dts/dtssdk/b/c$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->c:Lcom/dts/dtssdk/b/c$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->d:Lcom/dts/dtssdk/b/c$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->e:Lcom/dts/dtssdk/b/c$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->f:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->g:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->h:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->i:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->j:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->k:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->l:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->m:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->n:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->o:Lcom/dts/dtssdk/b/c$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dts/dtssdk/b/c$c;->p:[Lcom/dts/dtssdk/b/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/b/c$c;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/b/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/b/c$c;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/b/c$c;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/b/c$c;->p:[Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/b/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/b/c$c;

    return-object v0
.end method
