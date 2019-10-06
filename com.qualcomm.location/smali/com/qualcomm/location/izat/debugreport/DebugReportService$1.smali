.class Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;
.super Lcom/qti/debugreport/IDebugReportService$Stub;
.source "DebugReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/debugreport/DebugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 91
    iput-object p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-direct {p0}, Lcom/qti/debugreport/IDebugReportService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugReport()Landroid/os/Bundle;
    .locals 15

    .line 164
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "DebugReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDebugReport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    const/16 v3, 0x1e

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v5, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v6, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v7, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v8, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v9, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v10, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v11, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v12, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v13, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v14, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    invoke-static/range {v2 .. v14}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$600(Lcom/qualcomm/location/izat/debugreport/DebugReportService;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 193
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v1, "bundleDebugReportObj":Landroid/os/Bundle;
    const-string v2, "ephmeris-status-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    const-string v2, "fix-status-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    const-string v2, "external-position-injected"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 203
    const-string v2, "best-position-available"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 206
    const-string v2, "gps-time-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 209
    const-string v2, "rf-state-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 212
    const-string v2, "xo-state-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    const-string v2, "last-error-recoveries"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    const-string v2, "pdr-info"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    const-string v2, "sv-health-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 224
    const-string v2, "xtra-status-report"

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    monitor-exit v0

    return-object v1

    .line 228
    .end local v1    # "bundleDebugReportObj":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForDebugReporting(Lcom/qti/debugreport/IDebugReportCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/qti/debugreport/IDebugReportCallback;

    .line 94
    if-nez p1, :cond_0

    .line 95
    const-string v0, "DebugReportService"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "DebugReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForDebugReporting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 102
    invoke-static {v3}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 107
    .local v1, "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    if-nez v1, :cond_2

    .line 108
    new-instance v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-direct {v2, v3, p1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;-><init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService;Lcom/qti/debugreport/IDebugReportCallback;)V

    move-object v1, v2

    .line 109
    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->setData(Lcom/qualcomm/location/izat/CallbackData;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$300(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Lcom/qti/debugreport/IDebugReportCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$400(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$300(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Lcom/qti/debugreport/IDebugReportCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 114
    :cond_3
    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$302(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;Lcom/qti/debugreport/IDebugReportCallback;)Lcom/qti/debugreport/IDebugReportCallback;

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$400(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 118
    .end local v1    # "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-interface {p1}, Lcom/qti/debugreport/IDebugReportCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$1;-><init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;Lcom/qti/debugreport/IDebugReportCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    nop

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister debug report cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startReporting()V
    .locals 7

    .line 232
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "DebugReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to start periodic reporting by package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 234
    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 240
    .local v1, "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    if-eqz v1, :cond_1

    .line 241
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$702(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;Z)Z

    .line 243
    .end local v1    # "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v0, v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 246
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const-string v0, "DebugReportService"

    const-string v1, "Periodic reporting already in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    return-void

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportTimer:Ljava/util/Timer;

    .line 253
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportTimer:Ljava/util/Timer;

    new-instance v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;-><init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 383
    return-void

    .line 243
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopReporting()V
    .locals 4

    .line 386
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "DebugReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to stop periodic reporting by package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 388
    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 394
    .local v1, "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    if-eqz v1, :cond_1

    .line 395
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$702(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;Z)Z

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$500(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V

    .line 399
    .end local v1    # "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForDebugReporting(Lcom/qti/debugreport/IDebugReportCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/qti/debugreport/IDebugReportCallback;

    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v0, "DebugReportService"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "DebugReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterForDebugReporting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 154
    invoke-static {v3}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->removeData(Lcom/qualcomm/location/izat/CallbackData;)V

    .line 158
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$400(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 159
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$500(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
