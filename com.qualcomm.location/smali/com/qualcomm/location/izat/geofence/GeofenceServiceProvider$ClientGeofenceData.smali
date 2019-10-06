.class Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
.super Lcom/qualcomm/location/izat/CallbackData;
.source "GeofenceServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientGeofenceData"
.end annotation


# instance fields
.field private mCallback:Lcom/qti/geofence/IGeofenceCallback;

.field private mGeofenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/qti/geofence/GeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 63
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {p0}, Lcom/qualcomm/location/izat/CallbackData;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mGeofenceMap:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/qti/geofence/IGeofenceCallback;

    .line 57
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {p0}, Lcom/qualcomm/location/izat/CallbackData;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mCallback:Lcom/qti/geofence/IGeofenceCallback;

    .line 59
    iput-object p2, p0, Lcom/qualcomm/location/izat/CallbackData;->mCallback:Landroid/os/IInterface;

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mGeofenceMap:Ljava/util/Map;

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 52
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mCallback:Lcom/qti/geofence/IGeofenceCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Lcom/qti/geofence/IGeofenceCallback;)Lcom/qti/geofence/IGeofenceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .param p1, "x1"    # Lcom/qti/geofence/IGeofenceCallback;

    .line 52
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mCallback:Lcom/qti/geofence/IGeofenceCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 52
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 52
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 52
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mGeofenceMap:Ljava/util/Map;

    return-object v0
.end method
