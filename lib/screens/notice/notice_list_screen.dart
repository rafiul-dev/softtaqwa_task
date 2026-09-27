import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/notice_card.dart';
import 'notice_detail_screen.dart';

class NoticeListScreen extends StatelessWidget {
  const NoticeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (mockNotices.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox_outlined,
              size: 64,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              'No notices at this time.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 24),
      itemCount: mockNotices.length,
      itemBuilder: (context, index) {
        final notice = mockNotices[index];
        return NoticeCard(
          notice: notice,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => NoticeDetailScreen(notice: notice),
              ),
            );
          },
        );
      },
    );
  }
}
