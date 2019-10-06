.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
.super Ljava/lang/Object;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation


# instance fields
.field final dynamicNfcid2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;",
            ">;"
        }
    .end annotation
.end field

.field final dynamicSystemCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;",
            ">;"
        }
    .end annotation
.end field

.field final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    nop

    .line 107
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 108
    nop

    .line 109
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    .line 110
    nop

    .line 111
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;

    .line 102
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;-><init>()V

    return-void
.end method
