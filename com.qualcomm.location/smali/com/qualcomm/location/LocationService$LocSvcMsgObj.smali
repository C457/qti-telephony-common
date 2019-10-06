.class Lcom/qualcomm/location/LocationService$LocSvcMsgObj;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocSvcMsgObj"
.end annotation


# instance fields
.field obj:Ljava/lang/Object;

.field wakeLockHeld:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "wakeLock"    # Ljava/lang/Boolean;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;->obj:Ljava/lang/Object;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;->wakeLockHeld:Z

    .line 165
    return-void
.end method
