.class public Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;
.super Landroid/database/ContentObserver;
.source "OsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/osagent/OsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataItemContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1048
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    .line 1049
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1050
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1055
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange called for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$900(Lcom/qualcomm/location/osagent/OsAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v0, "dataItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "location_providers_allowed"

    .line 1059
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1058
    invoke-virtual {p2, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1061
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$1600(Lcom/qualcomm/location/osagent/OsAgent;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$1600(Lcom/qualcomm/location/osagent/OsAgent;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1066
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1068
    :cond_1
    const-string v1, "enhLocationServices_on"

    .line 1069
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1068
    invoke-virtual {p2, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1070
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_2
    const-string v1, "airplane_mode_on"

    .line 1073
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1072
    invoke-virtual {p2, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_3

    .line 1074
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1077
    :cond_3
    const-string v1, "assisted_gps_enabled"

    .line 1078
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1077
    invoke-virtual {p2, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_4

    .line 1079
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1081
    :cond_4
    const-string v1, "wifi_on"

    .line 1082
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1081
    invoke-virtual {p2, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "wifi_scan_always_enabled"

    .line 1084
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1083
    invoke-virtual {p2, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_6

    .line 1085
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1089
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1, v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$1000(Lcom/qualcomm/location/osagent/OsAgent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .end local v0    # "dataItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    goto :goto_1

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "getUriFor returned a NULL"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$1300(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1095
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method
